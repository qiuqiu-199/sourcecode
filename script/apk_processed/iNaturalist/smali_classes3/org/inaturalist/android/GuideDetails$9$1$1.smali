.class Lorg/inaturalist/android/GuideDetails$9$1$1;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideDetails$9$1;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/inaturalist/android/GuideDetails$9$1;

.field final synthetic val$view:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideDetails$9$1;Landroid/widget/AbsListView;)V
    .locals 0

    .line 843
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$9$1$1;->this$2:Lorg/inaturalist/android/GuideDetails$9$1;

    iput-object p2, p0, Lorg/inaturalist/android/GuideDetails$9$1$1;->val$view:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xa

    .line 847
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 849
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 851
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$9$1$1;->this$2:Lorg/inaturalist/android/GuideDetails$9$1;

    iget v0, v0, Lorg/inaturalist/android/GuideDetails$9$1;->tryCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$9$1$1;->val$view:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails$9$1$1;->this$2:Lorg/inaturalist/android/GuideDetails$9$1;

    iget v1, v1, Lorg/inaturalist/android/GuideDetails$9$1;->val$finalPosition:I

    if-eq v0, v1, :cond_0

    .line 853
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$9$1$1;->this$2:Lorg/inaturalist/android/GuideDetails$9$1;

    iget-object v0, v0, Lorg/inaturalist/android/GuideDetails$9$1;->this$1:Lorg/inaturalist/android/GuideDetails$9;

    iget-object v0, v0, Lorg/inaturalist/android/GuideDetails$9;->this$0:Lorg/inaturalist/android/GuideDetails;

    new-instance v1, Lorg/inaturalist/android/GuideDetails$9$1$1$1;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/GuideDetails$9$1$1$1;-><init>(Lorg/inaturalist/android/GuideDetails$9$1$1;)V

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GuideDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 859
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$9$1$1;->this$2:Lorg/inaturalist/android/GuideDetails$9$1;

    iget v1, v0, Lorg/inaturalist/android/GuideDetails$9$1;->tryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/inaturalist/android/GuideDetails$9$1;->tryCount:I

    goto :goto_1

    .line 861
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$9$1$1;->val$view:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 862
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$9$1$1;->this$2:Lorg/inaturalist/android/GuideDetails$9$1;

    const/4 v1, 0x0

    iput v1, v0, Lorg/inaturalist/android/GuideDetails$9$1;->tryCount:I

    :goto_1
    return-void
.end method
