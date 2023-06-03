.class Lorg/inaturalist/android/ExploreActivity$4;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreActivity;->loadListViewOffset(Landroid/widget/AbsListView;Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreActivity;

.field final synthetic val$finalIndex:Ljava/lang/Integer;

.field final synthetic val$finalOffset:Ljava/lang/Integer;

.field final synthetic val$listView:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/AbsListView;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$4;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iput-object p2, p0, Lorg/inaturalist/android/ExploreActivity$4;->val$listView:Landroid/widget/AbsListView;

    iput-object p3, p0, Lorg/inaturalist/android/ExploreActivity$4;->val$finalIndex:Ljava/lang/Integer;

    iput-object p4, p0, Lorg/inaturalist/android/ExploreActivity$4;->val$finalOffset:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 384
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 385
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$4;->val$listView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$4;->val$listView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity$4;->val$finalIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$4;->val$listView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity$4;->val$finalIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity$4;->val$finalOffset:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$4;->val$listView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity$4;->val$finalIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    :goto_0
    return-void
.end method
