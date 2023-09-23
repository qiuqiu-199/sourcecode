.class public Lorg/openintents/ssh/authentication/response/SigningResponse;
.super Lorg/openintents/ssh/authentication/response/Response;
.source "SigningResponse.java"


# instance fields
.field private mSignature:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/openintents/ssh/authentication/response/Response;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/openintents/ssh/authentication/response/SigningResponse;->mSignature:[B

    return-void
.end method


# virtual methods
.method protected putResults(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "signature"

    .line 53
    iget-object v1, p0, Lorg/openintents/ssh/authentication/response/SigningResponse;->mSignature:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-void
.end method
