.class Lorg/inaturalist/android/ObservationEditor$31;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->confirm(Landroid/app/Activity;IIIILjava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationEditor;

.field final synthetic val$onNegativeClick:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor;Ljava/lang/Runnable;)V
    .locals 0

    .line 3006
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$31;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationEditor$31;->val$onNegativeClick:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3009
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$31;->val$onNegativeClick:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$31;->val$onNegativeClick:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
