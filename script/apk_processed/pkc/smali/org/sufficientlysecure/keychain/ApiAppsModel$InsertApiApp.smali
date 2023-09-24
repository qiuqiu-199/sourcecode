.class public final Lorg/sufficientlysecure/keychain/ApiAppsModel$InsertApiApp;
.super Lcom/squareup/sqldelight/SqlDelightStatement;
.source "ApiAppsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ApiAppsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InsertApiApp"
.end annotation


# direct methods
.method public constructor <init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "api_apps"

    const-string v1, "INSERT INTO api_apps (package_name, package_signature) VALUES (?, ?)"

    .line 152
    invoke-interface {v3, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/squareup/sqldelight/SqlDelightStatement;-><init>(Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ApiAppsModel$InsertApiApp;---><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(Ljava/lang/String;[B)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const/4 v0, 0x1

    .line 157
    invoke-virtual {v1, v0, v2}, Lorg/sufficientlysecure/keychain/ApiAppsModel$InsertApiApp;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x2

    if-nez v3, :cond_0

    .line 159
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ApiAppsModel$InsertApiApp;->bindNull(I)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ApiAppsModel$InsertApiApp;->bindBlob(I[B)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ApiAppsModel$InsertApiApp;--->bind(Ljava/lang/String;[B)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
