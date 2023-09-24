.class public Lorg/sufficientlysecure/keychain/ssh/key/SshEd25519PublicKey;
.super Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;
.source "SshEd25519PublicKey.java"


# static fields
.field public static final KEY_ID:Ljava/lang/String; = "ssh-ed25519"


# instance fields
.field private mAbyte:[B


# direct methods
.method public constructor <init>([B)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const-string v0, "ssh-ed25519"

    .line 26
    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshEd25519PublicKey;->mAbyte:[B

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/key/SshEd25519PublicKey;---><init>([B)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected putData(Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 32
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshEd25519PublicKey;->mAbyte:[B

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putString([B)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/key/SshEd25519PublicKey;--->putData(Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
