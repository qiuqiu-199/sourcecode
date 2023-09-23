.class Lorg/inaturalist/android/OnboardingActivity$4;
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

    .line 137
    iput-object p1, p0, Lorg/inaturalist/android/OnboardingActivity$4;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 140
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string v0, "Onboarding Login Skip"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lorg/inaturalist/android/OnboardingActivity$4;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    invoke-static {p1}, Lorg/inaturalist/android/OnboardingActivity;->access$000(Lorg/inaturalist/android/OnboardingActivity;)Lorg/inaturalist/android/SignInTask;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/SignInTask;->pause()V

    .line 142
    iget-object p1, p0, Lorg/inaturalist/android/OnboardingActivity$4;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/OnboardingActivity;->setResult(I)V

    .line 143
    iget-object p1, p0, Lorg/inaturalist/android/OnboardingActivity$4;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/OnboardingActivity;->finish()V

    return-void
.end method
