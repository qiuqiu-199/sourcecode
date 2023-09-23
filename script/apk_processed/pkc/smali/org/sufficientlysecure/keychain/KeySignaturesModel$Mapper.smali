.class public final Lorg/sufficientlysecure/keychain/KeySignaturesModel$Mapper;
.super Ljava/lang/Object;
.source "KeySignaturesModel.java"

# interfaces
.implements Lcom/squareup/sqldelight/RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeySignaturesModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/KeySignaturesModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final keySignaturesModelFactory:Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 46
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/KeySignaturesModel$Mapper;->keySignaturesModelFactory:Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeySignaturesModel$Mapper;---><init>(Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/KeySignaturesModel$Mapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeySignaturesModel;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeySignaturesModel;
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

    .line 52
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/KeySignaturesModel$Mapper;->keySignaturesModelFactory:Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/KeySignaturesModel$Factory;->creator:Lorg/sufficientlysecure/keychain/KeySignaturesModel$Creator;

    const/4 v1, 0x0

    .line 53
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 54
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 52
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/KeySignaturesModel$Creator;->create(JJ)Lorg/sufficientlysecure/keychain/KeySignaturesModel;

    move-result-object v6

    return-object v6

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeySignaturesModel$Mapper;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeySignaturesModel;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
