.class public interface abstract Lorg/sufficientlysecure/keychain/ApiAppsModel;
.super Ljava/lang/Object;
.source "ApiAppsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ApiAppsModel$DeleteByPackageName;,
        Lorg/sufficientlysecure/keychain/ApiAppsModel$InsertApiApp;,
        Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;,
        Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;,
        Lorg/sufficientlysecure/keychain/ApiAppsModel$Creator;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS api_apps (\n    _id INTEGER PRIMARY KEY AUTOINCREMENT,\n    package_name TEXT NOT NULL UNIQUE,\n    package_signature BLOB\n)"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PACKAGE_SIGNATURE:Ljava/lang/String; = "package_signature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "api_apps"
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

.method public abstract package_name()Ljava/lang/String;
.end method

.method public abstract package_signature()[B
.end method
