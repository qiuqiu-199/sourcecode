.class public final Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper;
.super Ljava/lang/Object;
.source "KeyRingsPublicModel.java"

# interfaces
.implements Lcom/squareup/sqldelight/RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeyRingsPublicModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final keyRingsPublicModelFactory:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 45
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper;->keyRingsPublicModelFactory:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper;---><init>(Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeyRingsPublicModel;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeyRingsPublicModel;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 51
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper;->keyRingsPublicModelFactory:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Factory;->creator:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Creator;

    const/4 v1, 0x0

    .line 52
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 53
    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 51
    :goto_0
    invoke-interface {v0, v1, v2, v6}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Creator;->create(J[B)Lorg/sufficientlysecure/keychain/KeyRingsPublicModel;

    move-result-object v6

    return-object v6

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Mapper;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeyRingsPublicModel;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
