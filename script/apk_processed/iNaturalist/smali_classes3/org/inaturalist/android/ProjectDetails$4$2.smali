.class Lorg/inaturalist/android/ProjectDetails$4$2;
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

    .line 259
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails$4$2;->this$1:Lorg/inaturalist/android/ProjectDetails$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 262
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
