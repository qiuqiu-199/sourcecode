.class Lorg/inaturalist/android/INaturalistService$10;
.super Ljava/lang/Object;
.source "INaturalistService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/INaturalistService;->warmUpImageCache(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/INaturalistService;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/INaturalistService;Ljava/lang/String;)V
    .locals 0

    .line 3159
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistService$10;->this$0:Lorg/inaturalist/android/INaturalistService;

    iput-object p2, p0, Lorg/inaturalist/android/INaturalistService$10;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3162
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService$10;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService$10;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Lorg/inaturalist/android/INaturalistService$10$1;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/INaturalistService$10$1;-><init>(Lorg/inaturalist/android/INaturalistService$10;)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    return-void
.end method
