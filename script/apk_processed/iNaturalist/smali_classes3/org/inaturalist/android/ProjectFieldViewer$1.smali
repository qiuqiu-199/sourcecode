.class Lorg/inaturalist/android/ProjectFieldViewer$1;
.super Ljava/lang/Object;
.source "ProjectFieldViewer.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 288
    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$1;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 292
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$1;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectFieldViewer;->access$700(Lorg/inaturalist/android/ProjectFieldViewer;)Lorg/inaturalist/android/ProjectFieldViewer$FocusedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 293
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$1;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectFieldViewer;->access$800(Lorg/inaturalist/android/ProjectFieldViewer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 294
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$1;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/inaturalist/android/ProjectFieldViewer;->access$802(Lorg/inaturalist/android/ProjectFieldViewer;Z)Z

    goto :goto_0

    .line 296
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$1;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectFieldViewer;->access$700(Lorg/inaturalist/android/ProjectFieldViewer;)Lorg/inaturalist/android/ProjectFieldViewer$FocusedListener;

    move-result-object p1

    invoke-interface {p1}, Lorg/inaturalist/android/ProjectFieldViewer$FocusedListener;->onFocused()V

    :cond_1
    :goto_0
    return-void
.end method
