.class public Lorg/openintents/ssh/authentication/response/KeySelectionResponse;
.super Lorg/openintents/ssh/authentication/response/Response;
.source "KeySelectionResponse.java"


# instance fields
.field private mKeyDescription:Ljava/lang/String;

.field private mKeyId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/openintents/ssh/authentication/response/Response;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/openintents/ssh/authentication/response/KeySelectionResponse;->mKeyId:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lorg/openintents/ssh/authentication/response/KeySelectionResponse;->mKeyDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected putResults(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "key_id"

    .line 55
    iget-object v1, p0, Lorg/openintents/ssh/authentication/response/KeySelectionResponse;->mKeyId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "key_description"

    .line 56
    iget-object v1, p0, Lorg/openintents/ssh/authentication/response/KeySelectionResponse;->mKeyDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
