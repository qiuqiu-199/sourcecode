.class Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$2;
.super Ljava/lang/Object;
.source "ProjectSelectorActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$2;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 165
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$2;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$400(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$2;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$400(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 167
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$2;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$400(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$2;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;

    iget-object p2, p2, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    const v0, 0x7f010018

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 168
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver$2;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/inaturalist/android/ProjectSelectorActivity;->mShownSearchBox:Z

    :cond_0
    return-void
.end method
