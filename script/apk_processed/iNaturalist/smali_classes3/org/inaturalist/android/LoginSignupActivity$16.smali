.class Lorg/inaturalist/android/LoginSignupActivity$16;
.super Ljava/lang/Object;
.source "LoginSignupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/LoginSignupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/LoginSignupActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/LoginSignupActivity;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 407
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LoginSignupActivity;->access$1100(Lorg/inaturalist/android/LoginSignupActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 409
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LoginSignupActivity;->access$200(Lorg/inaturalist/android/LoginSignupActivity;)V

    .line 410
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LoginSignupActivity;->access$500(Lorg/inaturalist/android/LoginSignupActivity;)Lorg/inaturalist/android/SignInTask;

    move-result-object p1

    sget-object v0, Lorg/inaturalist/android/INaturalistService$LoginType;->OAUTH_PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {v1}, Lorg/inaturalist/android/LoginSignupActivity;->access$300(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {v2}, Lorg/inaturalist/android/LoginSignupActivity;->access$400(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/inaturalist/android/SignInTask;->signIn(Lorg/inaturalist/android/INaturalistService$LoginType;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 413
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    new-instance v0, Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;

    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;-><init>(Lorg/inaturalist/android/LoginSignupActivity;Lorg/inaturalist/android/LoginSignupActivity$1;)V

    invoke-static {p1, v0}, Lorg/inaturalist/android/LoginSignupActivity;->access$002(Lorg/inaturalist/android/LoginSignupActivity;Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;)Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;

    .line 414
    new-instance p1, Landroid/content/IntentFilter;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_REGISTER_USER_RESULT:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {v0}, Lorg/inaturalist/android/LoginSignupActivity;->access$000(Lorg/inaturalist/android/LoginSignupActivity;)Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {v0, p1, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 417
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_REGISTER_USER:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p1, v0, v2, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "email"

    .line 418
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {v1}, Lorg/inaturalist/android/LoginSignupActivity;->access$600(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "username"

    .line 419
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {v1}, Lorg/inaturalist/android/LoginSignupActivity;->access$300(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "password"

    .line 420
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {v1}, Lorg/inaturalist/android/LoginSignupActivity;->access$400(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "license"

    .line 421
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {v1}, Lorg/inaturalist/android/LoginSignupActivity;->access$1300(Lorg/inaturalist/android/LoginSignupActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CC-BY-NC"

    goto :goto_0

    :cond_1
    const-string v1, "on"

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 424
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LoginSignupActivity;->access$100(Lorg/inaturalist/android/LoginSignupActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity$16;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    const v1, 0x7f1002f3

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/LoginSignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/ActivityHelper;->loading(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
