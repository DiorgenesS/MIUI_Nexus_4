.class final Lcom/android/server/am/ActivityManagerService$MemItem;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MemItem"
.end annotation


# instance fields
.field final hasActivities:Z

.field final id:I

.field final isProc:Z

.field final label:Ljava/lang/String;

.field final pss:J

.field final shortLabel:Ljava/lang/String;

.field subitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityManagerService$MemItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1
    .param p1, "_label"    # Ljava/lang/String;
    .param p2, "_shortLabel"    # Ljava/lang/String;
    .param p3, "_pss"    # J
    .param p5, "_id"    # I

    .prologue
    const/4 v0, 0x0

    .line 14551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14552
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 14553
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 14554
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 14555
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 14556
    iput p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 14557
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    .line 14551
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIZ)V
    .locals 1
    .param p1, "_label"    # Ljava/lang/String;
    .param p2, "_shortLabel"    # Ljava/lang/String;
    .param p3, "_pss"    # J
    .param p5, "_id"    # I
    .param p6, "_hasActivities"    # Z

    .prologue
    .line 14541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 14544
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 14545
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 14546
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 14547
    iput p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 14548
    iput-boolean p6, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    .line 14542
    return-void
.end method
