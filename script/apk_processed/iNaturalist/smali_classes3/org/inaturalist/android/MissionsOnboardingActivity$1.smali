.class Lorg/inaturalist/android/MissionsOnboardingActivity$1;
.super Ljava/lang/Object;
.source "MissionsOnboardingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MissionsOnboardingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MissionsOnboardingActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MissionsOnboardingActivity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/inaturalist/android/MissionsOnboardingActivity$1;->this$0:Lorg/inaturalist/android/MissionsOnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 64
    iget-object p1, p0, Lorg/inaturalist/android/MissionsOnboardingActivity$1;->this$0:Lorg/inaturalist/android/MissionsOnboardingActivity;

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/MissionsOnboardingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 65
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "shown_missions_onboarding"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    iget-object p1, p0, Lorg/inaturalist/android/MissionsOnboardingActivity$1;->this$0:Lorg/inaturalist/android/MissionsOnboardingActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/MissionsOnboardingActivity;->finish()V

    return-void
.end method
