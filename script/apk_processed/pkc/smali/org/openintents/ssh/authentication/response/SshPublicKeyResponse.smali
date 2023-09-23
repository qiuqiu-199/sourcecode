.class public Lorg/openintents/ssh/authentication/response/SshPublicKeyResponse;
.super Lorg/openintents/ssh/authentication/response/Response;
.source "SshPublicKeyResponse.java"


# instance fields
.field private mSshPublicKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/openintents/ssh/authentication/response/Response;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/openintents/ssh/authentication/response/SshPublicKeyResponse;->mSshPublicKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected putResults(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "ssh_public_key"

    .line 52
    iget-object v1, p0, Lorg/openintents/ssh/authentication/response/SshPublicKeyResponse;->mSshPublicKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
