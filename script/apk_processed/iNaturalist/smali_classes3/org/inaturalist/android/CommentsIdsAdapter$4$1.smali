.class Lorg/inaturalist/android/CommentsIdsAdapter$4$1;
.super Ljava/lang/Object;
.source "CommentsIdsAdapter.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/CommentsIdsAdapter$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/CommentsIdsAdapter$4;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/CommentsIdsAdapter$4;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4$1;->this$1:Lorg/inaturalist/android/CommentsIdsAdapter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 243
    iget-object v0, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4$1;->this$1:Lorg/inaturalist/android/CommentsIdsAdapter$4;

    iget-object v0, v0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->val$onClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    const/4 p1, 0x1

    return p1
.end method
