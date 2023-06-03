.class Lorg/inaturalist/android/ProjectSelectorActivity$3;
.super Ljava/lang/Object;
.source "ProjectSelectorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectSelectorActivity;->focusProjectField()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

.field final synthetic val$fieldViewer:Lorg/inaturalist/android/ProjectFieldViewer;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectSelectorActivity;Lorg/inaturalist/android/ProjectFieldViewer;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$3;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iput-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$3;->val$fieldViewer:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 622
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$3;->val$fieldViewer:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-virtual {v0}, Lorg/inaturalist/android/ProjectFieldViewer;->setFocus()V

    .line 623
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$3;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$200(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$3;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$1400(Lorg/inaturalist/android/ProjectSelectorActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$3;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {v2}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$1500(Lorg/inaturalist/android/ProjectSelectorActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method
