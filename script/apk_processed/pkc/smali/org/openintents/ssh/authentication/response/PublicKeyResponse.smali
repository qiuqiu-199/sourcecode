.class public Lorg/openintents/ssh/authentication/response/PublicKeyResponse;
.super Lorg/openintents/ssh/authentication/response/Response;
.source "PublicKeyResponse.java"


# instance fields
.field private mEncodedPublicKey:[B

.field private mKeyAlgorithm:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/openintents/ssh/authentication/response/Response;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/openintents/ssh/authentication/response/PublicKeyResponse;->mEncodedPublicKey:[B

    .line 46
    iput p2, p0, Lorg/openintents/ssh/authentication/response/PublicKeyResponse;->mKeyAlgorithm:I

    return-void
.end method


# virtual methods
.method protected putResults(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "public_key"

    .line 57
    iget-object v1, p0, Lorg/openintents/ssh/authentication/response/PublicKeyResponse;->mEncodedPublicKey:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "public_key_algorithm"

    .line 58
    iget v1, p0, Lorg/openintents/ssh/authentication/response/PublicKeyResponse;->mKeyAlgorithm:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method
