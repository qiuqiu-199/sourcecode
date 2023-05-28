.class Lorg/inaturalist/android/ExploreActivity$7;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreActivity;->refreshTabTitles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreActivity;

.field final synthetic val$count:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$7;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iput-object p2, p0, Lorg/inaturalist/android/ExploreActivity$7;->val$count:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 914
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$7;->val$count:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
