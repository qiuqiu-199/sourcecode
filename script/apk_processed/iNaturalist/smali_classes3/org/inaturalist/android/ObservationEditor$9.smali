.class Lorg/inaturalist/android/ObservationEditor$9;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationEditor;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$9;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 620
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$9;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$9;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1, v0}, Lorg/inaturalist/android/ObservationEditor;->access$1100(Lorg/inaturalist/android/ObservationEditor;Landroid/app/Activity;)V

    return-void
.end method