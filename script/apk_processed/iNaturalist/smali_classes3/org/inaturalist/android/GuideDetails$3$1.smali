.class Lorg/inaturalist/android/GuideDetails$3$1;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideDetails$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/GuideDetails$3;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideDetails$3;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$3$1;->this$1:Lorg/inaturalist/android/GuideDetails$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 380
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$3$1;->this$1:Lorg/inaturalist/android/GuideDetails$3;

    iget-object p1, p1, Lorg/inaturalist/android/GuideDetails$3;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$1000(Lorg/inaturalist/android/GuideDetails;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 382
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$3$1;->this$1:Lorg/inaturalist/android/GuideDetails$3;

    iget-object p1, p1, Lorg/inaturalist/android/GuideDetails$3;->this$0:Lorg/inaturalist/android/GuideDetails;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$3$1;->this$1:Lorg/inaturalist/android/GuideDetails$3;

    iget-object v0, v0, Lorg/inaturalist/android/GuideDetails$3;->this$0:Lorg/inaturalist/android/GuideDetails;

    const-class v1, Lorg/inaturalist/android/OnboardingActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x24000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/GuideDetails;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 386
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$3$1;->this$1:Lorg/inaturalist/android/GuideDetails$3;

    iget-object p1, p1, Lorg/inaturalist/android/GuideDetails$3;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$1100(Lorg/inaturalist/android/GuideDetails;)V

    return-void
.end method
