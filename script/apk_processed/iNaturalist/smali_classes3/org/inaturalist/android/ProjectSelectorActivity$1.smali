.class Lorg/inaturalist/android/ProjectSelectorActivity$1;
.super Ljava/lang/Object;
.source "ProjectSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectSelectorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProjectSelectorActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectSelectorActivity;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$1;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 277
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "project_ids"

    .line 279
    iget-object v2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$1;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ProjectSelectorActivity;->mObservationProjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 280
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 282
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$1;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/inaturalist/android/ProjectSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 283
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$1;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/ProjectSelectorActivity;->finish()V

    return-void
.end method
