.class Lorg/inaturalist/android/ObservationEditor$34;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->openImageIntent(Landroid/app/Activity;)V
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

    .line 3061
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$34;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const p1, 0x7f0a008d

    if-eq p2, p1, :cond_1

    const p1, 0x7f0a03ca

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 3070
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$34;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$2300(Lorg/inaturalist/android/ObservationEditor;)V

    goto :goto_0

    .line 3067
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$34;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$2200(Lorg/inaturalist/android/ObservationEditor;)V

    :goto_0
    return-void
.end method
