.class Lorg/inaturalist/android/ProjectDetails$4;
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

    .line 242
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails$4;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 245
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$4;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/inaturalist/android/ProjectDetails;->mJoinedOrLeftProject:Z

    .line 246
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$4;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectDetails;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "joined"

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v0, :cond_0

    .line 248
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$4;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectDetails;->access$100(Lorg/inaturalist/android/ProjectDetails;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v0

    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$4;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v1, 0x7f1001e7

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/ProjectDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$4;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v2, 0x7f1001e8

    invoke-virtual {p1, v2}, Lorg/inaturalist/android/ProjectDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/inaturalist/android/ProjectDetails$4$1;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/ProjectDetails$4$1;-><init>(Lorg/inaturalist/android/ProjectDetails$4;)V

    new-instance v4, Lorg/inaturalist/android/ProjectDetails$4$2;

    invoke-direct {v4, p0}, Lorg/inaturalist/android/ProjectDetails$4$2;-><init>(Lorg/inaturalist/android/ProjectDetails$4;)V

    const v5, 0x7f1003b1

    const v6, 0x7f100260

    invoke-virtual/range {v0 .. v6}, Lorg/inaturalist/android/ActivityHelper;->confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$4;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectDetails;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    const-string v0, "terms"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 269
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$4;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectDetails;->access$100(Lorg/inaturalist/android/ProjectDetails;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v0

    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$4;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v1, 0x7f100139

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/ProjectDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$4;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectDetails;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "terms"

    invoke-virtual {p1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/inaturalist/android/ProjectDetails$4$3;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/ProjectDetails$4$3;-><init>(Lorg/inaturalist/android/ProjectDetails$4;)V

    new-instance v4, Lorg/inaturalist/android/ProjectDetails$4$4;

    invoke-direct {v4, p0}, Lorg/inaturalist/android/ProjectDetails$4$4;-><init>(Lorg/inaturalist/android/ProjectDetails$4;)V

    const v5, 0x7f1003b1

    const v6, 0x7f100260

    invoke-virtual/range {v0 .. v6}, Lorg/inaturalist/android/ActivityHelper;->confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$4;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectDetails;->access$200(Lorg/inaturalist/android/ProjectDetails;)V

    :goto_0
    return-void
.end method
