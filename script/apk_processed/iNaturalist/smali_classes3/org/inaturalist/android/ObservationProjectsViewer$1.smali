.class Lorg/inaturalist/android/ObservationProjectsViewer$1;
.super Ljava/lang/Object;
.source "ObservationProjectsViewer.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationProjectsViewer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationProjectsViewer;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationProjectsViewer;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/inaturalist/android/ObservationProjectsViewer$1;->this$0:Lorg/inaturalist/android/ObservationProjectsViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 117
    iget-object p2, p0, Lorg/inaturalist/android/ObservationProjectsViewer$1;->this$0:Lorg/inaturalist/android/ObservationProjectsViewer;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationProjectsViewer;->access$000(Lorg/inaturalist/android/ObservationProjectsViewer;)Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 118
    iget-object p2, p0, Lorg/inaturalist/android/ObservationProjectsViewer$1;->this$0:Lorg/inaturalist/android/ObservationProjectsViewer;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationProjectsViewer;->access$000(Lorg/inaturalist/android/ObservationProjectsViewer;)Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
