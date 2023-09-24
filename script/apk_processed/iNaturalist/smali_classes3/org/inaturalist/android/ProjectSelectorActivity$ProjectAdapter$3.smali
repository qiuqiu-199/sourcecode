.class Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$3;
.super Ljava/lang/Object;
.source "ProjectSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

.field final synthetic val$finalView:Landroid/view/View;

.field final synthetic val$position:I

.field final synthetic val$projectId:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;Landroid/view/View;II)V
    .locals 0

    .line 540
    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$3;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$3;->val$finalView:Landroid/view/View;

    iput p3, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$3;->val$position:I

    iput p4, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$3;->val$projectId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 543
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$3;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$200(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$3;->val$finalView:Landroid/view/View;

    iget v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$3;->val$position:I

    iget v2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$3;->val$projectId:I

    int-to-long v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method
