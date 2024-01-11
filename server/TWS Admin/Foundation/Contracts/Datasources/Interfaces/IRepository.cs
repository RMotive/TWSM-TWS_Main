﻿namespace Foundation.Contracts.Datasources.Interfaces;
public interface IRepository<TEntity, TSet>
    : IRepository,
        IRepositoryRead<TEntity, TSet>,        
        IRepositoryCreate<TEntity, TSet>
    where TEntity : IEntity
    where TSet : ISet<TEntity> {

}

public interface IRepository { }