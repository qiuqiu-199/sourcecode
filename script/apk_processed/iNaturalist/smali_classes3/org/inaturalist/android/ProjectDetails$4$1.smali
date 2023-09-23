.class Lorg/inaturalist/android/ProjectDetails$4$1;
.super Ljava/lang/Object;
.source "ProjectDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectDetails$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ProjectDetails$4;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectDetails$4;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails$4$1;->this$1:Lorg/inaturalist/android/ProjectDetails$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 252
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$4$1;->this$1:Lorg/inaturalist/android/ProjectDetails$4;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectDetails$4;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectDetails;->access$000(Lorg/inaturalist/android/ProjectDetails;)Landroid/widget/Button;

    move-result-object p1

    const p2, 0x7f1001d9

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 253
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$4$1;->this$1:Lorg/inaturalist/android/ProjectDetails$4;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectDetails$4;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectDetails;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    const-string p2, "joined"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lorg/inaturalist/android/INaturalistService;->ACTION_LEAVE_PROJECT:Ljava/lang/String;

    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails$4$1;->this$1:Lorg/inaturalist/android/ProjectDetails$4;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectDetails$4;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const-class v1, Lorg/inaturalist/android/INaturalistService;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "project_id"

    .line 256
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails$4$1;->this$1:Lorg/inaturalist/android/ProjectDetails$4;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectDetails$4;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectDetails;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 257
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$4$1;->this$1:Lorg/inaturalist/android/ProjectDetails$4;

    iget-object p2, p2, Lorg/inaturalist/android/ProjectDetails$4;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p2, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
