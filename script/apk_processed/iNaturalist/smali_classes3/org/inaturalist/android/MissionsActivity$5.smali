.class Lorg/inaturalist/android/MissionsActivity$5;
.super Ljava/lang/Object;
.source "MissionsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MissionsActivity;->resizeMissionCategories()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MissionsActivity;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MissionsActivity;Landroid/os/Handler;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lorg/inaturalist/android/MissionsActivity$5;->this$0:Lorg/inaturalist/android/MissionsActivity;

    iput-object p2, p0, Lorg/inaturalist/android/MissionsActivity$5;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 382
    iget-object p1, p0, Lorg/inaturalist/android/MissionsActivity$5;->val$handler:Landroid/os/Handler;

    new-instance p2, Lorg/inaturalist/android/MissionsActivity$5$1;

    invoke-direct {p2, p0}, Lorg/inaturalist/android/MissionsActivity$5$1;-><init>(Lorg/inaturalist/android/MissionsActivity$5;)V

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
