.class Lorg/inaturalist/android/ProjectFieldViewer$5;
.super Ljava/lang/Object;
.source "ProjectFieldViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectFieldViewer;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProjectFieldViewer;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectFieldViewer;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$5;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 418
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer$5;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {v0}, Lorg/inaturalist/android/ProjectFieldViewer;->access$100(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    const-class v1, Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "field_id"

    .line 419
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer$5;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {v1}, Lorg/inaturalist/android/ProjectFieldViewer;->access$1200(Lorg/inaturalist/android/ProjectFieldViewer;)Lorg/inaturalist/android/ProjectField;

    move-result-object v1

    iget-object v1, v1, Lorg/inaturalist/android/ProjectField;->field_id:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 420
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer$5;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {v0}, Lorg/inaturalist/android/ProjectFieldViewer;->access$100(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    const/16 v1, 0x12d

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
