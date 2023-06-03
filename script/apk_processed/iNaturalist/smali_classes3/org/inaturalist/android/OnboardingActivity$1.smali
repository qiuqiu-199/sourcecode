.class Lorg/inaturalist/android/OnboardingActivity$1;
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

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/OnboardingActivity$1;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lorg/inaturalist/android/OnboardingActivity$1;->this$0:Lorg/inaturalist/android/OnboardingActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/OnboardingActivity;->onBackPressed()V

    return-void
.end method
