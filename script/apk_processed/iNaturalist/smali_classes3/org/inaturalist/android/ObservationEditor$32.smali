.class Lorg/inaturalist/android/ObservationEditor$32;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Lorg/inaturalist/android/ProjectFieldViewer$ProjectFieldsResults;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->refreshProjectFields()V
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

    .line 3017
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$32;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProjectFieldsResults(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/inaturalist/android/ProjectFieldValue;",
            ">;)V"
        }
    .end annotation

    .line 3020
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$32;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0, p1}, Lorg/inaturalist/android/ObservationEditor;->access$4302(Lorg/inaturalist/android/ObservationEditor;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 3022
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$32;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldValues:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 3023
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$32;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iput-object p2, p1, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldValues:Ljava/util/HashMap;

    .line 3026
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$32;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$4400(Lorg/inaturalist/android/ObservationEditor;)V

    return-void
.end method
