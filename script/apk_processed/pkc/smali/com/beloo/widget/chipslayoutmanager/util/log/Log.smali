.class public Lcom/beloo/widget/chipslayoutmanager/util/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beloo/widget/chipslayoutmanager/util/log/Log$LogSwitcher;
    }
.end annotation


# static fields
.field private static log:Lcom/beloo/widget/chipslayoutmanager/util/log/LogWrapper;

.field private static logSwitcher:Lcom/beloo/widget/chipslayoutmanager/util/log/Log$LogSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/util/log/Log$LogSwitcher;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log$LogSwitcher;-><init>()V

    sput-object v0, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->logSwitcher:Lcom/beloo/widget/chipslayoutmanager/util/log/Log$LogSwitcher;

    .line 14
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/util/log/SilentLog;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/util/log/SilentLog;-><init>()V

    sput-object v0, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->log:Lcom/beloo/widget/chipslayoutmanager/util/log/LogWrapper;

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 22
    sget-object v0, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->log:Lcom/beloo/widget/chipslayoutmanager/util/log/LogWrapper;

    invoke-interface {v0, p0, p1}, Lcom/beloo/widget/chipslayoutmanager/util/log/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 50
    sget-object v0, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->logSwitcher:Lcom/beloo/widget/chipslayoutmanager/util/log/Log$LogSwitcher;

    invoke-virtual {v0, p2}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log$LogSwitcher;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 41
    sget-object v0, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->log:Lcom/beloo/widget/chipslayoutmanager/util/log/LogWrapper;

    invoke-interface {v0, p0, p1}, Lcom/beloo/widget/chipslayoutmanager/util/log/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 37
    sget-object v0, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->log:Lcom/beloo/widget/chipslayoutmanager/util/log/LogWrapper;

    invoke-interface {v0, p0, p1}, Lcom/beloo/widget/chipslayoutmanager/util/log/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 65
    sget-object v0, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->logSwitcher:Lcom/beloo/widget/chipslayoutmanager/util/log/Log$LogSwitcher;

    invoke-virtual {v0, p2}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log$LogSwitcher;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 32
    sget-object v0, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->log:Lcom/beloo/widget/chipslayoutmanager/util/log/LogWrapper;

    invoke-interface {v0, p0, p1}, Lcom/beloo/widget/chipslayoutmanager/util/log/LogWrapper;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
