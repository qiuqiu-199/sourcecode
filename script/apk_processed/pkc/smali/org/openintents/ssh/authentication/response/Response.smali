.class public abstract Lorg/openintents/ssh/authentication/response/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field protected mError:Lorg/openintents/ssh/authentication/SshAuthenticationApiError;

.field protected mPendingIntent:Landroid/app/PendingIntent;

.field protected mResultCode:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lorg/openintents/ssh/authentication/response/Response;->mResultCode:I

    return-void
.end method


# virtual methods
.method protected abstract putResults(Landroid/content/Intent;)V
.end method

.method public toIntent()Landroid/content/Intent;
    .locals 3

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    iget v1, p0, Lorg/openintents/ssh/authentication/response/Response;->mResultCode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "result_code"

    const/4 v2, 0x2

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "intent"

    .line 81
    iget-object v2, p0, Lorg/openintents/ssh/authentication/response/Response;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_1
    const-string v1, "result_code"

    const/4 v2, 0x1

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v0}, Lorg/openintents/ssh/authentication/response/Response;->putResults(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "result_code"

    const/4 v2, 0x0

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "error"

    .line 85
    iget-object v2, p0, Lorg/openintents/ssh/authentication/response/Response;->mError:Lorg/openintents/ssh/authentication/SshAuthenticationApiError;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
