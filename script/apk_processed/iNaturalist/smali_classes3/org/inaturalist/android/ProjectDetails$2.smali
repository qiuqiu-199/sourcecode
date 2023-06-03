.class Lorg/inaturalist/android/ProjectDetails$2;
.super Ljava/lang/Object;
.source "ProjectDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectDetails;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProjectDetails;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectDetails;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails$2;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 200
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails$2;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const-class v1, Lorg/inaturalist/android/ProjectDetailsAbout;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "project"

    .line 201
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails$2;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectDetails;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 202
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails$2;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/ProjectDetails;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
