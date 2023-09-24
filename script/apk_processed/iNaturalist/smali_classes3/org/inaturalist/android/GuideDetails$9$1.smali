.class Lorg/inaturalist/android/GuideDetails$9$1;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideDetails$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/GuideDetails$9;

.field tryCount:I

.field final synthetic val$finalPosition:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideDetails$9;I)V
    .locals 0

    .line 837
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$9$1;->this$1:Lorg/inaturalist/android/GuideDetails$9;

    iput p2, p0, Lorg/inaturalist/android/GuideDetails$9$1;->val$finalPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 838
    iput p1, p0, Lorg/inaturalist/android/GuideDetails$9$1;->tryCount:I

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 843
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lorg/inaturalist/android/GuideDetails$9$1$1;

    invoke-direct {v0, p0, p1}, Lorg/inaturalist/android/GuideDetails$9$1$1;-><init>(Lorg/inaturalist/android/GuideDetails$9$1;Landroid/widget/AbsListView;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 865
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
