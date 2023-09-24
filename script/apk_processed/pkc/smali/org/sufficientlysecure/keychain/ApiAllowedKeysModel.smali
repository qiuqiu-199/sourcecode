.class public interface abstract Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel;
.super Ljava/lang/Object;
.source "ApiAllowedKeysModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$DeleteByPackageName;,
        Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$InsertAllowedKey;,
        Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Factory;,
        Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Mapper;,
        Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$Creator;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS api_allowed_keys (\n    _id INTEGER PRIMARY KEY AUTOINCREMENT,\n    key_id INTEGER,\n    package_name TEXT NOT NULL,\n    UNIQUE (key_id, package_name),\n    FOREIGN KEY (package_name) REFERENCES api_apps (package_name) ON DELETE CASCADE\n)"

.field public static final KEY_ID:Ljava/lang/String; = "key_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "api_allowed_keys"
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

.method public abstract key_id()Ljava/lang/Long;
.end method

.method public abstract package_name()Ljava/lang/String;
.end method
