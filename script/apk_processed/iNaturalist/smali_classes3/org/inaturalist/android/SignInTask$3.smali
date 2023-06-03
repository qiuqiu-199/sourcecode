.class Lorg/inaturalist/android/SignInTask$3;
.super Ljava/lang/Object;
.source "SignInTask.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/SignInTask;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/SignInTask;

.field final synthetic val$boundInvalidated:Ljava/lang/String;

.field final synthetic val$boundUsername:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/SignInTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lorg/inaturalist/android/SignInTask$3;->this$0:Lorg/inaturalist/android/SignInTask;

    iput-object p2, p0, Lorg/inaturalist/android/SignInTask$3;->val$boundUsername:Ljava/lang/String;

    iput-object p3, p0, Lorg/inaturalist/android/SignInTask$3;->val$boundInvalidated:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 296
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "authAccount"

    .line 297
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "authtoken"

    .line 298
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent"

    .line 299
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 302
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask$3;->this$0:Lorg/inaturalist/android/SignInTask;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/inaturalist/android/SignInTask$3;->val$boundUsername:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Lorg/inaturalist/android/INaturalistService$LoginType;->GOOGLE:Lorg/inaturalist/android/INaturalistService$LoginType;

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistService$LoginType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/inaturalist/android/SignInTask$3;->val$boundInvalidated:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/SignInTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 305
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v1, -0x10000001

    and-int/2addr v0, v1

    .line 307
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 308
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask$3;->this$0:Lorg/inaturalist/android/SignInTask;

    invoke-static {v0}, Lorg/inaturalist/android/SignInTask;->access$200(Lorg/inaturalist/android/SignInTask;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3000

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string p1, "SignInTask"

    const-string v0, "AccountManager was unable to obtain an authToken."

    .line 310
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SignInTask"

    const-string v1, "Auth Error"

    .line 313
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
