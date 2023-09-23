.class final Lorg/inaturalist/android/ActivityHelper$11;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ActivityHelper;->resizeList(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lorg/inaturalist/android/ActivityHelper$11;->val$list:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 542
    iget-object p1, p0, Lorg/inaturalist/android/ActivityHelper$11;->val$list:Landroid/widget/ListView;

    invoke-static {p1}, Lorg/inaturalist/android/ActivityHelper;->setListViewHeightBasedOnItems(Landroid/widget/ListView;)I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
