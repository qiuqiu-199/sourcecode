.class public interface abstract Lorg/sufficientlysecure/keychain/OverriddenWarningsModel;
.super Ljava/lang/Object;
.source "OverriddenWarningsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$DeleteByIdentifier;,
        Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$InsertIdentifier;,
        Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory;,
        Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Mapper;,
        Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Creator;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS overridden_warnings (\n    _id INTEGER PRIMARY KEY AUTOINCREMENT,\n    identifier TEXT NOT NULL UNIQUE\n)"

.field public static final IDENTIFIER:Ljava/lang/String; = "identifier"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "overridden_warnings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final _ID:Ljava/lang/String; = "_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public abstract _id()Ljava/lang/Long;
.end method

.method public abstract identifier()Ljava/lang/String;
.end method
