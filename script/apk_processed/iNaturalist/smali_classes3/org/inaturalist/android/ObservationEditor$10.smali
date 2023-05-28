.class Lorg/inaturalist/android/ObservationEditor$10;
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

    .line 673
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$10;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 676
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$10;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/ObservationEditor;->showDialog(I)V

    return-void
.end method
