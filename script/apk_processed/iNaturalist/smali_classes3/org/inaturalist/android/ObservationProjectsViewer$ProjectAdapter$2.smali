.class Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter$2;
.super Ljava/lang/Object;
.source "ObservationProjectsViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;

.field final synthetic val$noHTMLDescription:Ljava/lang/String;

.field final synthetic val$projectTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter$2;->this$1:Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter$2;->val$projectTitle:Ljava/lang/String;

    iput-object p3, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter$2;->val$noHTMLDescription:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 252
    iget-object p1, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter$2;->this$1:Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;->this$0:Lorg/inaturalist/android/ObservationProjectsViewer;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationProjectsViewer;->access$300(Lorg/inaturalist/android/ObservationProjectsViewer;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter$2;->val$projectTitle:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter$2;->val$noHTMLDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
