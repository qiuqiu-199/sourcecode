.class final Lorg/inaturalist/android/TabsAdapter$TabInfo;
.super Ljava/lang/Object;
.source "TabsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/TabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/inaturalist/android/TabsAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TabsAdapter;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lorg/inaturalist/android/TabsAdapter$TabInfo;->this$0:Lorg/inaturalist/android/TabsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lorg/inaturalist/android/TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    .line 39
    iput-object p3, p0, Lorg/inaturalist/android/TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/TabsAdapter$TabInfo;)Ljava/lang/Class;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/inaturalist/android/TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/TabsAdapter$TabInfo;)Landroid/os/Bundle;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/inaturalist/android/TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    return-object p0
.end method
