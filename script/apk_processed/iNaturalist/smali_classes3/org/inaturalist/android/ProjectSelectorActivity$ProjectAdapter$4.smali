.class Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$4;
.super Ljava/lang/Object;
.source "ProjectSelectorActivity.java"

# interfaces
.implements Lorg/inaturalist/android/ProjectFieldViewer$FocusedListener;


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

.field final synthetic val$field:Lorg/inaturalist/android/ProjectField;

.field final synthetic val$projectId:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;Lorg/inaturalist/android/ProjectField;I)V
    .locals 0

    .line 563
    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$4;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$4;->val$field:Lorg/inaturalist/android/ProjectField;

    iput p3, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$4;->val$projectId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocused()V
    .locals 3

    .line 566
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$4;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$4;->val$field:Lorg/inaturalist/android/ProjectField;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectField;->field_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$1202(Lorg/inaturalist/android/ProjectSelectorActivity;I)I

    .line 567
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$4;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$4;->val$projectId:I

    invoke-static {v0, v1}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$1302(Lorg/inaturalist/android/ProjectSelectorActivity;I)I

    .line 569
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$4;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$4;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$200(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$1402(Lorg/inaturalist/android/ProjectSelectorActivity;I)I

    .line 570
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$4;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$200(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 571
    iget-object v2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$4;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    iget-object v2, v2, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$4;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$200(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    :goto_0
    invoke-static {v2, v1}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$1502(Lorg/inaturalist/android/ProjectSelectorActivity;I)I

    return-void
.end method
