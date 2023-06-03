.class Lorg/inaturalist/android/OnboardingActivity$2;
.super Ljava/lang/Object;
.source "OnboardingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/OnboardingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/OnboardingActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/OnboardingActivity;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/inaturalist/android/OnboardingActivity$2;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 105
    iget-object p1, p0, Lorg/inaturalist/android/OnboardingActivity$2;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    invoke-static {p1}, Lorg/inaturalist/android/OnboardingActivity;->access$000(Lorg/inaturalist/android/OnboardingActivity;)Lorg/inaturalist/android/SignInTask;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/SignInTask;->pause()V

    .line 107
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/OnboardingActivity$2;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    const-class v1, Lorg/inaturalist/android/LoginSignupActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "signup"

    const/4 v1, 0x1

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "background_id"

    .line 109
    iget-object v1, p0, Lorg/inaturalist/android/OnboardingActivity$2;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    invoke-static {v1}, Lorg/inaturalist/android/OnboardingActivity;->access$100(Lorg/inaturalist/android/OnboardingActivity;)Landroid/widget/ViewFlipper;

    move-result-object v1

    iget-object v2, p0, Lorg/inaturalist/android/OnboardingActivity$2;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    invoke-static {v2}, Lorg/inaturalist/android/OnboardingActivity;->access$100(Lorg/inaturalist/android/OnboardingActivity;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    iget-object v0, p0, Lorg/inaturalist/android/OnboardingActivity$2;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Lorg/inaturalist/android/OnboardingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 112
    iget-object p1, p0, Lorg/inaturalist/android/OnboardingActivity$2;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/OnboardingActivity;->overridePendingTransition(II)V

    return-void
.end method
