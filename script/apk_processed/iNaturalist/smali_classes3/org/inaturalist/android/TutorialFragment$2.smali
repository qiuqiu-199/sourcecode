.class Lorg/inaturalist/android/TutorialFragment$2;
.super Ljava/lang/Object;
.source "TutorialFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TutorialFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TutorialFragment;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TutorialFragment;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/inaturalist/android/TutorialFragment$2;->this$0:Lorg/inaturalist/android/TutorialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 63
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string v0, "Onboarding View Nearby Obs"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lorg/inaturalist/android/TutorialFragment$2;->this$0:Lorg/inaturalist/android/TutorialFragment;

    invoke-virtual {p1}, Lorg/inaturalist/android/TutorialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/TutorialActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/inaturalist/android/TutorialFragment$2;->this$0:Lorg/inaturalist/android/TutorialFragment;

    invoke-virtual {v1}, Lorg/inaturalist/android/TutorialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/inaturalist/android/ExploreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/TutorialActivity;->startActivityIfNew(Landroid/content/Intent;Z)V

    return-void
.end method
