.class Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;
.super Ljava/lang/Object;
.source "PgpDecryptVerifyOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArmorHeaders"
.end annotation


# instance fields
.field backupVersion:Ljava/lang/Integer;

.field charset:Ljava/lang/String;

.field passphraseBegin:Ljava/lang/String;

.field passphraseFormat:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 233
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 234
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->charset:Ljava/lang/String;

    .line 235
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->backupVersion:Ljava/lang/Integer;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$1;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;-><init>()V

    return-void
.end method
