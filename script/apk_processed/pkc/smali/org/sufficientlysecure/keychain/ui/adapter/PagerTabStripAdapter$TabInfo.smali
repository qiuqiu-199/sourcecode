.class final Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter$TabInfo;
.super Ljava/lang/Object;
.source "PagerTabStripAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field public final args:Landroid/os/Bundle;

.field public final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 40
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter$TabInfo;->clss:Ljava/lang/Class;

    .line 42
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 43
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter$TabInfo;->title:Ljava/lang/String;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter$TabInfo;---><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
