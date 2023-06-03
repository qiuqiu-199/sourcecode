.class Lorg/inaturalist/android/INaturalistApp$2;
.super Ljava/lang/Object;
.source "INaturalistApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/INaturalistApp;->enableComponent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/INaturalistApp;

.field final synthetic val$networkForLabel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistApp$2;->this$0:Lorg/inaturalist/android/INaturalistApp;

    iput-object p2, p0, Lorg/inaturalist/android/INaturalistApp$2;->val$networkForLabel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 435
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp$2;->this$0:Lorg/inaturalist/android/INaturalistApp;

    iget-object v1, p0, Lorg/inaturalist/android/INaturalistApp$2;->val$networkForLabel:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/inaturalist/android/INaturalistApp;->access$000(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;)V

    return-void
.end method
