.class public final Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Mapper;
.super Ljava/lang/Object;
.source "OverriddenWarningsModel.java"

# interfaces
.implements Lcom/squareup/sqldelight/RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/OverriddenWarningsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/OverriddenWarningsModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final overriddenWarningsModelFactory:Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 46
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Mapper;->overriddenWarningsModelFactory:Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Mapper;---><init>(Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Mapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/OverriddenWarningsModel;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/OverriddenWarningsModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 52
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Mapper;->overriddenWarningsModelFactory:Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Factory;->creator:Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Creator;

    const/4 v1, 0x0

    .line 53
    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    .line 54
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-interface {v0, v1, v4}, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Creator;->create(Ljava/lang/Long;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/OverriddenWarningsModel;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Mapper;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/OverriddenWarningsModel;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
