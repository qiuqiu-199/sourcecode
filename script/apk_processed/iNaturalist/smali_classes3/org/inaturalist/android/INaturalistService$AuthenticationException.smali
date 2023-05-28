.class Lorg/inaturalist/android/INaturalistService$AuthenticationException;
.super Ljava/lang/Exception;
.source "INaturalistService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/INaturalistService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthenticationException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/INaturalistService;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/INaturalistService;)V
    .locals 0

    .line 5281
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistService$AuthenticationException;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/INaturalistService;Lorg/inaturalist/android/INaturalistService$1;)V
    .locals 0

    .line 5281
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService$AuthenticationException;-><init>(Lorg/inaturalist/android/INaturalistService;)V

    return-void
.end method
