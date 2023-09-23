.class public final Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateLastSeen;
.super Lcom/squareup/sqldelight/SqlDelightStatement;
.source "AutocryptPeersModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/AutocryptPeersModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateLastSeen"
.end annotation


# instance fields
.field private final autocryptPeersModelFactory:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory<",
            "+",
            "Lorg/sufficientlysecure/keychain/AutocryptPeersModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteDatabase;",
            "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory<",
            "+",
            "Lorg/sufficientlysecure/keychain/AutocryptPeersModel;",
            ">;)V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    const-string v0, "autocrypt_peers"

    const-string v1, "UPDATE autocrypt_peers SET last_seen = ?3 WHERE package_name = ?1 AND identifier = ?2"

    .line 398
    invoke-interface {v3, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/squareup/sqldelight/SqlDelightStatement;-><init>(Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    .line 400
    iput-object v4, v2, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateLastSeen;->autocryptPeersModelFactory:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateLastSeen;---><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const/4 v0, 0x1

    .line 405
    invoke-virtual {v1, v0, v2}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateLastSeen;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x2

    .line 406
    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateLastSeen;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x3

    if-nez p0, :cond_0

    .line 408
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateLastSeen;->bindNull(I)V

    goto :goto_0

    .line 410
    :cond_0
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateLastSeen;->autocryptPeersModelFactory:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->last_seenAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-interface {v3, p0}, Lcom/squareup/sqldelight/ColumnAdapter;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateLastSeen;->bindLong(IJ)V

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$UpdateLastSeen;--->bind(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
