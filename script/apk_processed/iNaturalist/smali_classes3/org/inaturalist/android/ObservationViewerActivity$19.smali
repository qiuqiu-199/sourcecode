.class Lorg/inaturalist/android/ObservationViewerActivity$19;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->loadObservationIntoUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationViewerActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 1598
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$19;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1601
    new-instance p1, Lorg/inaturalist/android/ObservationViewerActivity$19$1;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ObservationViewerActivity$19$1;-><init>(Lorg/inaturalist/android/ObservationViewerActivity$19;)V

    .line 1628
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7f0e0017

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 1629
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$19;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity$19;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationViewerActivity;->access$2600(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1630
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1631
    new-instance v1, Lorg/inaturalist/android/ObservationViewerActivity$19$2;

    invoke-direct {v1, p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity$19$2;-><init>(Lorg/inaturalist/android/ObservationViewerActivity$19;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1639
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0

    .line 1641
    :cond_0
    new-instance v0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$19;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {v0, v2}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->sheet(I)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->listener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->show()Lcom/cocosw/bottomsheet/BottomSheet;

    :goto_0
    return-void
.end method
