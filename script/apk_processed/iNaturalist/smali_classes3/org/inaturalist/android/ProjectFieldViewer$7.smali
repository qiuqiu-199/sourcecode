.class Lorg/inaturalist/android/ProjectFieldViewer$7;
.super Ljava/lang/Object;
.source "ProjectFieldViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectFieldViewer;->showDateTimeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProjectFieldViewer;

.field final synthetic val$mDateTimeDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectFieldViewer;Landroid/app/Dialog;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$7;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    iput-object p2, p0, Lorg/inaturalist/android/ProjectFieldViewer$7;->val$mDateTimeDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 453
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$7;->val$mDateTimeDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
