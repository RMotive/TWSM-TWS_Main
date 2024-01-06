﻿using Foundation.Records.Datasources;

namespace Foundation.Contracts.Datasources.Interfaces;
public interface IDatasourceRepository<TEntity, TSet>
    : IDatasourceRepository
    where TEntity : IDatasourceEntity
    where TSet : IDatasourceSet {
    // --> Create interfaces <--
    public Task<TEntity> Create(TEntity Entity);
    public Task<OperationResults<TEntity, TEntity>> Create(TEntity Entity, int Copies);
    public Task<OperationResults<TEntity, TEntity>> Create(List<TEntity> Entities);
    // --> Read interfaces <--
    public Task<TEntity> Read(int Pointer);
    public Task<List<TEntity>> Read();
    public Task<OperationResults<TEntity, int>> Read(List<int> Pointers);
    public Task<OperationResults<TEntity, Predicate<TSet>>> Read(Predicate<TSet> Match, bool FirstOnly = false);
    // --> Update interfaces <--
    public Task<TEntity> Update(TEntity Entity);
    public Task<TEntity> Update(int Pointer, TEntity Entity);
    public Task<List<TEntity>> Update(List<TEntity> Entities);
    public Task<List<TEntity>> Update(List<int> Pointers, List<TEntity> Entities);
    public Task<List<TEntity>> Update(List<int> Pointers, TEntity Entity);
    public Task<List<TEntity>> Update(Predicate<TEntity> Match, Func<TEntity, TEntity> Refactor, bool FirstOnlt = false);
    // --> Delete interfaces <--
    public Task<TEntity> Delete(TEntity Entity);
    public Task<TEntity> Delete(int Pointer);
    public Task<List<TEntity>> Delete(List<TEntity> Entities);
    public Task<List<TEntity>> Delete(List<int> Entities);
    public Task<List<TEntity>> Delete(Predicate<TEntity> Match, bool FirstOnly = false);
}

public interface IDatasourceRepository { }