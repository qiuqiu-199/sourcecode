.class Lorg/inaturalist/android/LoginSignupActivity$13;
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

    .line 328
    iput-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$13;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 332
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$13;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LoginSignupActivity;->access$1500(Lorg/inaturalist/android/LoginSignupActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object p1

    .line 333
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity$13;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-static {v0}, Lorg/inaturalist/android/LoginSignupActivity;->access$1500(Lorg/inaturalist/android/LoginSignupActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inat_host_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/forgot_password.mobile"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 337
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity$13;->this$0:Lorg/inaturalist/android/LoginSignupActivity;

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/LoginSignupActivity;->startActivity(Landroid/content/Intent;)V

    .line 339
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string v0, "Forgot Password"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    return-void
.end method
