.class Lorg/inaturalist/android/MissionsActivity$4;
.super Ljava/lang/Object;
.source "MissionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MissionsActivity;->resizeMissionCategories()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MissionsActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MissionsActivity;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lorg/inaturalist/android/MissionsActivity$4;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity$4;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-static {v0}, Lorg/inaturalist/android/MissionsActivity;->access$500(Lorg/inaturalist/android/MissionsActivity;)V

    return-void
.end method
